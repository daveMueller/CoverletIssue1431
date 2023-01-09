using System.Diagnostics.CodeAnalysis;

namespace CoverletIssue1431
{
    public class Class1<T>
    {
        [ExcludeFromCodeCoverage]
        public static async IAsyncEnumerable<int> Demo()
        {
            yield return 5;
        }
    }
}