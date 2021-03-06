/*
 * TRLDAPGroupConfig.m vi:ts=4:sw=4:expandtab:
 * LDAP Group Configuration
 *
 * Author: Landon Fuller <landonf@threerings.net>
 *
 * Copyright (c) 2006 - 2007 Three Rings Design, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the copyright holder nor the names of any contributors
 *    may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#import <stdlib.h>

#import "TRLDAPGroupConfig.h"

@implementation TRLDAPGroupConfig
- (void) dealloc {
    if (_baseDN)
        [_baseDN release];

    if (_searchFilter)
        [_searchFilter release];

    if (_memberAttribute)
        [_memberAttribute release];

    if (_pfTable)
        [_pfTable release];

    [super dealloc];
}

- (id) init {
    self = [super init];
    if (self == nil)
        return self;

    _memberRFC2307BIS = YES;
    return self;
}

- (TRString *) baseDN {
    return (_baseDN);
}

- (void) setBaseDN: (TRString *) baseDN {
    if (_baseDN)
        [_baseDN release];
    _baseDN = [baseDN retain];
}

- (TRString *) searchFilter {
    return (_searchFilter);
}

- (void) setSearchFilter: (TRString *) searchFilter {
    if (_searchFilter)
        [_searchFilter release];
    _searchFilter = [searchFilter retain];
}

- (TRString *) memberAttribute {
    return (_memberAttribute);
}

- (void) setMemberAttribute: (TRString *) memberAttribute {
    if (_memberAttribute)
        [_memberAttribute release];
    _memberAttribute = [memberAttribute retain];
}

- (BOOL) memberRFC2307BIS {
    return (_memberRFC2307BIS);
}

- (void) setMemberRFC2307BIS: (BOOL) memberRFC2307BIS {
    _memberRFC2307BIS = memberRFC2307BIS;
}

- (void) setPFTable: (TRString *) tableName {
    if (_pfTable)
        [_pfTable release];
    _pfTable = [tableName retain];
}

- (TRString *) pfTable {
    return (_pfTable);
}

@end
