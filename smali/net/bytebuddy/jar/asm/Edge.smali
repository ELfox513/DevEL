.class final Lnet/bytebuddy/jar/asm/Edge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lnet/bytebuddy/jar/asm/Label;

.field public c:Lnet/bytebuddy/jar/asm/Edge;


# direct methods
.method public constructor <init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/jar/asm/Edge;->a:I

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    return-void
.end method
