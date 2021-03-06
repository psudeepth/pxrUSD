//
// Copyright 2019 Autodesk
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#pragma once

#define MAYAUSD_MAJOR_VERSION 0
#define MAYAUSD_MINOR_VERSION 9
#define MAYAUSD_PATCH_LEVEL   0

// MayaUsd public namespace string will never change.
#define MAYAUSD_NS MayaUsd
// C preprocessor trickery to expand arguments.
#define MAYAUSD_CONCAT(A, B) MAYAUSD_CONCAT_IMPL(A, B)
#define MAYAUSD_CONCAT_IMPL(A, B) A##B
// Versioned namespace includes the major version number.
#define MAYAUSD_VERSIONED_NS MAYAUSD_CONCAT(MAYAUSD_NS, _v0)

namespace MAYAUSD_VERSIONED_NS {}

// With a using namespace declaration, pull in the versioned namespace into the
// MayaUsd public namespace, to allow client code to use the plain MayaUsd
// namespace, e.g. MayaUsd::Class.
namespace MAYAUSD_NS {
    using namespace MAYAUSD_VERSIONED_NS;
}

// Macro to place the MayaUsd symbols in the versioned namespace, which is how
// they will appear in the shared library, e.g. MayaUsd_v1::Class.
#ifdef DOXYGEN
#define MAYAUSD_NS_DEF MAYAUSD_NS
#else
#define MAYAUSD_NS_DEF MAYAUSD_VERSIONED_NS
#endif
