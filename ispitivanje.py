import unittest
from dodatak_A import OperationsManager
import math

class TestOperationManager(unittest.TestCase):
    def test_perform_division(self):
        # Testiranje ispravnog slučaja
        ops_manager = OperationsManager(10, 2)
        result = ops_manager.perform_division()
        self.assertEqual(result, 5)

        # Testiranje slučaja kada je b jednako 0
        ops_manager = OperationsManager(10, 0)
        result = ops_manager.perform_division()
        self.assertTrue(math.isnan(result))  # Provjera da li je rezultat NaN

    def test_multiply(self):
        # Testiranje ispravnog slučaja
        ops_manager = OperationsManager(5, 3)
        result = ops_manager.multiply()
        self.assertEqual(result, 15)

    def test_subtract(self):
        # Testiranje ispravnog slučaja
        ops_manager = OperationsManager(10, 3)
        result = ops_manager.subtract()
        self.assertEqual(result, 7)

    def test_power(self):
        # Testiranje ispravnog slučaja
        ops_manager = OperationsManager(2, 3)
        result = ops_manager.power()
        self.assertEqual(result, 8)

if __name__ == '__main__':
    okolina = unittest.TestSuite()
    okolina.addTest(TestOperationManager('test_perform_division'))
    okolina.addTest(TestOperationManager('test_multiply'))
    okolina.addTest(TestOperationManager('test_subtract'))
    okolina.addTest(TestOperationManager('test_power'))
    result = unittest.TextTestRunner(verbosity=2).run(okolina)

    if not result.wasSuccessful():
        exit(1)
    
    if result.wasSuccessful():
        exit(0)