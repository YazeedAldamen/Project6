using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Project.Models;

namespace Project.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["Email"] != null )
                {
                    Email.Text = Request.Cookies["Email"].Value;
                    //Password.Attributes["Value"] = Request.Cookies["Password"].Value;
                }

            }

            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (RememberMe.Checked)
            {
                Response.Cookies["Email"].Value = Email.Text;
                //Response.Cookies["Password"].Value = Password.Text;
                Response.Cookies["Email"].Expires = DateTime.Now.AddDays(1);
                //Response.Cookies["Password"].Expires = DateTime.Now.AddSeconds(20);

            }
            else
            {
                Response.Cookies["Email"].Expires = DateTime.Now.AddMinutes(-1);
                //Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(-1);
            }
            if (IsValid)
            {
                // Validate the user password
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicatoinsignInManager>();

                // This doen't count login failures towards account lockout
                // To enable password failures to trigger lockout, change to shouldLockout: true
                var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

                switch (result)
                {
                    case SignInStatus.Success:
                        var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                        SqlConnection connection = new SqlConnection(connectionString);
                        connection.Open();
                        SqlCommand sql = new SqlCommand($"Select Id from AspNetUsers where UserName='{Email.Text}'", connection);
                        string user_id = sql.ExecuteScalar().ToString();
                        Session["user_id"] = user_id;

                        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                        if (Context.User.IsInRole("Admin"))
                        {
                            Response.Redirect("Admin.aspx");
                        }
                        break;
                    case SignInStatus.LockedOut:
                        Response.Redirect("/Account/Lockout");
                        break;
                    case SignInStatus.RequiresVerification:
                        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                        Request.QueryString["ReturnUrl"],
                                                        RememberMe.Checked),
                                          true);
                        break;
                    case SignInStatus.Failure:
                    default:
                        FailureText.Text = "Invalid login attempt";
                        ErrorMessage.Visible = true;
                        break;
                }
            }
        }
    }
}