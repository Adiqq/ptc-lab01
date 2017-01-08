library verilog;
use verilog.vl_types.all;
entity \lab2-async\ is
    port(
        oledr           : out    vl_logic_vector(3 downto 0);
        key             : in     vl_logic_vector(0 downto 0)
    );
end \lab2-async\;
