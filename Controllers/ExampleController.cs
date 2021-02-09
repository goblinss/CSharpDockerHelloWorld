using Microsoft.AspNetCore.Mvc;

namespace CSharpDockerHelloWorld.Controllers
{
    [ApiController]
    [Route("/")]
    public class WeatherForecastController : ControllerBase
    {
        [HttpGet]
        public string Get()
        {
            return "Hello world!";
        }
    }
}