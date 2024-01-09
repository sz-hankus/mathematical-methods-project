% MIT License

% Copyright (c) 2023 Szymon Hankus

% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:

% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.

% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MathematicaReport}[2023/10/29 A class for writing formatted reports]

% Based on the standard article class
\LoadClass{article}
\RequirePackage{tabularx}
\RequirePackage{geometry}
\RequirePackage{multirow}
\geometry{
    a4paper,
    top=30mm,
    left=40mm,
    right=40mm,
    bottom=30mm
}

\newcommand{\place}[1]{\def\@place{#1}}
\newcommand{\tasknumber}[1]{\def\@tasknumber{#1}}
\newcommand{\field}[1]{\def\@field{#1}}

\renewcommand{\maketitle}{%

    \begin{flushright}
        \@place, \@date
    \end{flushright}
    \medskip

    \begin{flushleft}
        {\fontsize{14}{16}\selectfont
        Mathematical and computer modeling of~various technical and scientific
        problems -- Documentation of the final laboratory project
        }\\
    \end{flushleft}
    
    \begin{center}
        {\fontsize{16}{19}\selectfont
            \textbf{\@title} \\
        \medskip}
    \end{center}

    \begin{center}
        {\fontsize{12}{15}\selectfont
        \begin{tabular}{l @{\hskip 20mm} l}
            % Field of study & \@field \\
            \hline
            \multirow{3}{*}{Authors} & Jakub Pietrasik \\
            & Bartosz Lewandowicz\\
            & Szymon Hankus\\
            \hline
            Field of study & \@field \\
            \hline
        \end{tabular}
        }
    \end{center}

    \bigskip
}