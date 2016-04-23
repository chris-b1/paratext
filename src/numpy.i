/*
    ParaText: parallel text reading
    Copyright (C) 2016. wise.io, Inc.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/*
  Coder: Damian Eads.
 */

%{

#include "numpy_helper.hpp"

template <class Container>
PyObject *build_array(const Container &container) {
  return (PyObject*)build_array_impl<Container>::build_array(container);
}

template <class Iterator>
PyObject *build_array_from_range(const std::pair<Iterator, Iterator> &range) {
  return (PyObject*)build_array_from_range_impl<Iterator>::build_array(range);
}
%}
