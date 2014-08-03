# TFOibValidator

Croatian personal identification number (OIB) validator for [REValidation](https://github.com/romaonthego/REValidation)

## Requirements
* [REValidation](https://github.com/romaonthego/REValidation)
* Xcode 4.5 or higher
* Apple LLVM compiler
* iOS 5.0 or higher / Mac OS X 10.7 or higher
* ARC

## Example Usage

``` objective-c
[REValidation registerDefaultValidators];
[REValidation registerDefaultErrorMessages];
[REValidation registerValidator:[TFOibValidator class]];

NSString *oibString = @"12345678901";
NSArray *errors = [REValidation validateObject:oibString name:@"OIB" validators:@[ @"presence", @"oib" ]];

for (NSError *error in errors) {
  if ([error.domain isEqualToString:@"com.REValidation.oib"]) NSLog(@"OIB not valid");
}
```

## Contact

Tomislav Filipcic

- https://github.com/tomislav
- https://www.7sols.com
- tomislav@7sols.com

## License

TFOibValidator is available under the BSD license.

Copyright (c) 2014, Tomislav Filipcic
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those
of the authors and should not be interpreted as representing official policies,
either expressed or implied, of the FreeBSD Project.
