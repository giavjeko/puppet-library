# -*- encoding: utf-8 -*-
# Puppet Library
# Copyright (C) 2014 drrb
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

Feature: Module search
    As a user
    I want to search the modules
    So that I can find details about specific modules

    Scenario: Visit the module list page
        Given the "puppetlabs/apache" module is available at version "1.0.0"
        And the "puppetlabs/stdlib" module is available at version "1.0.0"
        When I visit the module list page
        And I search for "apache"
        Then I should see "puppetlabs/apache"
        And I should not see "puppetlabs/stdlib"