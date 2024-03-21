///
/// @file solomon/pragma.hpp
/// @author Yohei MIKI (The University of Tokyo)
/// @brief pragma as macro
///
/// @copyright Copyright (c) 2024 Yohei MIKI
///
/// The MIT License is applied to this software, see LICENSE.txt
///
#if !defined(SOLOMON_PRAGMA_HPP)
#define SOLOMON_PRAGMA_HPP

///
/// @brief input arguments into _Pragma
///
#define PRAGMA(...) _Pragma(#__VA_ARGS__)

#endif  // !defined(SOLOMON_PRAGMA_HPP)
