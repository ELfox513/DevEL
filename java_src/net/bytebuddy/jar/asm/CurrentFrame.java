package net.bytebuddy.jar.asm;
/* loaded from: classes.dex */
final class CurrentFrame extends Frame {
    public CurrentFrame(Label label) {
        super(label);
    }

    @Override // net.bytebuddy.jar.asm.Frame
    /* renamed from: c */
    public void mo14902c(int i, int i2, Symbol symbol, SymbolTable symbolTable) {
        super.mo14902c(i, i2, symbol, symbolTable);
        Frame frame = new Frame(null);
        m14898g(symbolTable, frame, 0);
        m14903b(frame);
    }
}
