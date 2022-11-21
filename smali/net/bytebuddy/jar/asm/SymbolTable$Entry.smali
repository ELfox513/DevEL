.class Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
.super Lnet/bytebuddy/jar/asm/Symbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/jar/asm/SymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public final h:I

.field public i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;


# direct methods
.method public constructor <init>(IIJI)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput p5, p0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput p4, p0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JI)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput p6, p0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput p5, p0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lnet/bytebuddy/jar/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput p8, p0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    return-void
.end method
