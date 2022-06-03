----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:00:52 03/23/2022 
-- Design Name: 
-- Module Name:    MCOMPARATOR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MCOMPARATOR is
    Port ( A : in  STD_LOGIC_VECTOR (3 DOWNTO 0);--INPUT SIGNAL A WITH 4 BITS
           B : in  STD_LOGIC_VECTOR (3 DOWNTO 0);--INPUT SIGNAL B WITH 4 BITS
           E : out  STD_LOGIC;-- 1 BIT EQUALITY COMPARATOR OUTPUT
           G_AB : out  STD_LOGIC;-- 1 BIT A GREATER THAN B COMPARATOR OUTPUT
           G_BA : out  STD_LOGIC);-- 1 BIT B GREATER THAN A COMPARATOR
end MCOMPARATOR;

architecture Behavioral of MCOMPARATOR is
SIGNAL NB_3 : STD_LOGIC; --INTERMEDIATE SIGNAL FOR NOT B(3)
SIGNAL NB_2 : STD_LOGIC; --INTERMEDIATE SIGNAL FOR NOT B(2)
SIGNAL NB_1 : STD_LOGIC; --INTERMEDIATE SIGNAL FOR NOT B(1)
SIGNAL NB_0 : STD_LOGIC; --INTERMEDIATE SIGNAL FOR NOT B(1)
SIGNAL E_INTER : STD_LOGIC; --INTERMEDIATE SIGNAL COMPARATOR
SIGNAL G_AB_INTER : STD_LOGIC; --INTERMEDIATE SIGNAL FOR A GREATER THAN B

begin
NB_3 <= NOT B(3); --ASSIGNING NOT B(3)
NB_2 <= NOT B(2); --ASSIGNING NOT B(2)
NB_1 <= NOT B(1); --ASSIGNING NOT B(1)
NB_0 <= NOT B(0); --ASSIGNING NOT B(0)

--ASSIGNING INTERMEDIATE EQUALITY COMPARATOR
E_INTER <= (A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (A(1) XNOR B(1)) AND (A(0) XNOR B(0));
--ASSIGNING INTERMEDIATE A GREATER THAN B COMPARATOR
G_AB_INTER <= (A(3) AND NB_3) OR ( (A(3) XNOR B(3)) AND ( (A(2) AND NB_2) OR ( (A(2) XNOR B(2)) AND ( (A(1) AND NB_1) OR ( (A(1) XNOR B(1)) AND ( (A(0) AND NB_0) ) ) ) ) ) );

--EQUALITY COMPARATOR
E <= (A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (A(1) XNOR B(1)) AND (A(0) XNOR B(0));
--A GREATER THAN B COMPARATOR
G_AB <= (A(3) AND NB_3) OR ( (A(3) XNOR B(3)) AND ( (A(2) AND NB_2) OR 
( (A(2) XNOR B(2)) AND ( (A(1) AND NB_1) OR ( (A(1) XNOR B(1)) AND ( (A(0) AND NB_0) ) ) ) ) ) );
--B GREATER THAN A COMPARATOR
G_BA <= NOT (E_INTER OR G_AB_INTER);
end Behavioral;

