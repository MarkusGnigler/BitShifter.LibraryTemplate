using Xunit;
using FluentAssertions;

namespace BitShifter.LibraryTemplate.Tests
{
    public class CalculatorTests
    {
        [Fact]
        public void Calculator_Add()
        {
            var calculator = new Calculator();

            var sut = calculator.Add(1, 1);

            sut.Should()
                .Be(2);
        }

        [Theory]
        [InlineData(1, 2, 3)]
        [InlineData(42, 42, 84)]
        [InlineData(666, 666, 1332)]
        public void Calculator_Add_Multi(int x, int y, int expected)
        {
            var calculator = new Calculator();

            var sut = calculator.Add(x, y);

            sut.Should()
                .Be(expected);
        }
    }
}