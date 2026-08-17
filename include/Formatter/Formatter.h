#pragma once

#include <string>
#include <vector>
#include <utility>

#include <Formatter/Helper.h>

struct FormatResult {
    bool success = false;
    std::string error;
    std::string formatted;
};

class Formatter {
public:
    template<typename... Args>
    static FormatResult ToFormat(
        const char* formatStr,
        Args&&... args
    ) {
        std::vector<std::string> convertedArgs;

        convertedArgs.reserve(sizeof...(Args));

        (
            convertedArgs.emplace_back(
                helpers::ToString(std::forward<Args>(args))
            ),
            ...
            );

        return ToFormatImpl(formatStr, convertedArgs);
    }

private:
    static FormatResult ToFormatImpl(
        const char* formatStr,
        const std::vector<std::string>& args
    );
};