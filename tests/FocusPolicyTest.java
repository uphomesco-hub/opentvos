package com.sid.tvos;

public final class FocusPolicyTest {
    private static void expect(int result, int expected) {
        if (result != expected) throw new AssertionError(result + " != " + expected);
    }
    public static void main(String[] args) {
        expect(FocusPolicy.select(0, new boolean[0]), -1);
        expect(FocusPolicy.select(0, new boolean[]{false,false,false,false,false,true,true}), 5);
        expect(FocusPolicy.select(4, new boolean[]{true,false,false,false,false,true}), 5);
        expect(FocusPolicy.select(3, new boolean[]{true,false,false,false,false}), 0);
        expect(FocusPolicy.select(2, new boolean[]{true,true,true,true,true}), 2);
        expect(FocusPolicy.select(99, new boolean[]{false,true,false}), 1);
        expect(FocusPolicy.select(-5, new boolean[]{false,true}), 1);
        expect(FocusPolicy.select(1, new boolean[]{false,false}), -1);
        for(int columns=4;columns<=6;columns++) {
            boolean[] cards=new boolean[columns+8];
            for(int i=columns;i<cards.length;i++) cards[i]=true;
            for(int i=0;i<columns;i++) expect(FocusPolicy.select(i,cards),columns);
        }
        System.out.println("PASS: focus regression cases including empty/partial docks and 4/5/6 columns");
    }
}
