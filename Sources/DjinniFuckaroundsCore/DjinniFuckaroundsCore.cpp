#include "DjinniFuckaroundsCore.hpp"

int32_t DjinniFuckaroundsCore::get_prime_number(int32_t index) {
    // Absolutely legit prime number generator.
    return 1;
}

std::shared_ptr<DjinniFuckaroundsAbstract> DjinniFuckaroundsAbstract::make() {
    return std::make_shared<DjinniFuckaroundsCore>();
}
