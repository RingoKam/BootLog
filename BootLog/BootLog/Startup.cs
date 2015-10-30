using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BootLog.Startup))]
namespace BootLog
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
