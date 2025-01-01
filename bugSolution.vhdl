```vhdl
ENTITY counter IS
    GENERIC (N : INTEGER := 4);
    PORT (clk, rst : IN BIT; count : OUT UNSIGNED(N-1 DOWNTO 0));
END ENTITY;

ARCHITECTURE behavioral OF counter IS
    SIGNAL temp_count : UNSIGNED(N-1 DOWNTO 0) := (OTHERS => '0');
BEGIN
    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            temp_count <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            temp_count <= temp_count + 1;
        END IF;
    END PROCESS;
    count <= temp_count;
END ARCHITECTURE;
```