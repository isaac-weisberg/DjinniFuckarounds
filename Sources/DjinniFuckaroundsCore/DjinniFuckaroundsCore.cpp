#include "DjinniFuckaroundsCore.hpp"

int32_t DjinniFuckaroundsCore::get_prime_number(int32_t index) {
    // Absolutely legit prime number generator.
    // Ughm it's kind of... hard to find algorithms for such shit
    // So how about i just... simulate a very slow algorithm...
    for (int i = 0; i < index * 1000; i++) {
        i++;
    }
    return index;
}

std::shared_ptr<DjinniFuckaroundsAbstract> DjinniFuckaroundsAbstract::make() {
    return std::make_shared<DjinniFuckaroundsCore>();
}
