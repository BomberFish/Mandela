//
//  vm_unaligned_copy_switch_race.h
//  Mandela
//
//  Created by Hariz Shirazi on 2023-01-12.
//

#pragma once
#include <stdlib.h>
#include <stdbool.h>

/// Uses CVE-2022-46689 to overwrite `overwrite_length` bytes of `file_to_overwrite` with `overwrite_data`, starting from `file_offset`.
/// `page_to_overwrite` should be a page aligned `PROT_READ` `MAP_SHARED` region. ``
/// `overwrite_length` must be less than or equal to `PAGE_LENGTH - 1`.
/// Returns `true` if the overwrite succeeded, and `false` if the device is not vulnerable.
///
bool unaligned_copy_switch_race(int file_to_overwrite, off_t file_offset, const void* overwrite_data, size_t overwrite_length);
