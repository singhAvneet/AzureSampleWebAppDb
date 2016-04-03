using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(sampleWebAppSQLDb.Startup))]
namespace sampleWebAppSQLDb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
