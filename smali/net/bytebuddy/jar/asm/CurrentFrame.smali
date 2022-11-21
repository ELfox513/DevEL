.class final Lnet/bytebuddy/jar/asm/CurrentFrame;
.super Lnet/bytebuddy/jar/asm/Frame;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method


# virtual methods
.method public c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    new-instance p1, Lnet/bytebuddy/jar/asm/Frame;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p4, p1, p2}, Lnet/bytebuddy/jar/asm/Frame;->g(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/Frame;I)Z

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;->b(Lnet/bytebuddy/jar/asm/Frame;)V

    return-void
.end method
