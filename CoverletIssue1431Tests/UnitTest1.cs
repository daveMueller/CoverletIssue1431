using System.Linq;
using CoverletIssue1431;
using System.Threading.Tasks;
using Xunit;

namespace CoverletIssue1431Tests
{
    public class UnitTest1
    {
        [Fact] public async Task Test2() => Assert.Equal(new[] { 5 }, await Class1<string>.Demo().ToListAsync());
    }
}