/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    T_INTEGER = 258,
    T_CROD = 259,
    T_CROG = 260,
    T_VIRG = 261,
    T_PTVIRG = 262,
    T_EQUAL = 263,
    T_ERROR = 264,
    T_INF = 265,
    T_IDENT = 266,
    T_SUP = 267,
    T_SLASH = 268,
    T_STRING = 269,
    T_INF_SLASH = 270,
    T_INF_INTER = 271,
    T_INF_ESCLAM = 272,
    T_CDATA = 273,
    T_DATA = 274,
    T_INTER_SUP = 275,
    T_MIN_MIN = 276,
    T_MIN_MIN_SUP = 277
  };
#endif
/* Tokens.  */
#define T_INTEGER 258
#define T_CROD 259
#define T_CROG 260
#define T_VIRG 261
#define T_PTVIRG 262
#define T_EQUAL 263
#define T_ERROR 264
#define T_INF 265
#define T_IDENT 266
#define T_SUP 267
#define T_SLASH 268
#define T_STRING 269
#define T_INF_SLASH 270
#define T_INF_INTER 271
#define T_INF_ESCLAM 272
#define T_CDATA 273
#define T_DATA 274
#define T_INTER_SUP 275
#define T_MIN_MIN 276
#define T_MIN_MIN_SUP 277

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
