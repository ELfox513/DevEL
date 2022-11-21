.class abstract Lnet/bytebuddy/jar/asm/Symbol;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:J

.field public g:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    iput p2, p0, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/Symbol;->c:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/jar/asm/Symbol;->d:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    iput-wide p6, p0, Lnet/bytebuddy/jar/asm/Symbol;->f:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/Symbol;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/Symbol;->g:I

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/Symbol;->g:I

    return v0
.end method
