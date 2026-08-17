#pragma once
#include <string>

namespace helpers {
    std::string ToString(const char* _Str);

    std::string ToString(const std::string& _Str);

    std::string ToString(bool _Bool);

    template<typename _Ty>
    std::string ToString(const _Ty& value);
}