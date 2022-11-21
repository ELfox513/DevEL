.class public Ld6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:La6/g;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Lf2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf2/e<",
            "Lz5/a0;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lf2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf2/f<",
            "Lz5/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf2/e<",
            "Lz5/a0;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La6/g;

    invoke-direct {v0}, La6/g;-><init>()V

    sput-object v0, Ld6/c;->c:La6/g;

    const-string v0, "hts/cahyiseot-agolai.o/1frlglgc/aclg"

    const-string v1, "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho"

    invoke-static {v0, v1}, Ld6/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld6/c;->d:Ljava/lang/String;

    const-string v0, "AzSBpY4F0rHiHFdinTvM"

    const-string v1, "IayrSTFL9eJ69YeSUO2"

    invoke-static {v0, v1}, Ld6/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld6/c;->e:Ljava/lang/String;

    new-instance v0, Ld6/a;

    invoke-direct {v0}, Ld6/a;-><init>()V

    sput-object v0, Ld6/c;->f:Lf2/e;

    return-void
.end method

.method public constructor <init>(Lf2/f;Lf2/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/f<",
            "Lz5/a0;",
            ">;",
            "Lf2/e<",
            "Lz5/a0;",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld6/c;->a:Lf2/f;

    iput-object p2, p0, Ld6/c;->b:Lf2/e;

    return-void
.end method

.method public static synthetic a(Lz5/a0;)[B
    .locals 0

    invoke-static {p0}, Ld6/c;->e(Lz5/a0;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lj5/j;Lx5/o;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld6/c;->d(Lj5/j;Lx5/o;Ljava/lang/Exception;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Ld6/c;
    .locals 4

    invoke-static {p0}, Li2/r;->f(Landroid/content/Context;)V

    invoke-static {}, Li2/r;->c()Li2/r;

    move-result-object p0

    new-instance v0, Lg2/a;

    sget-object v1, Ld6/c;->d:Ljava/lang/String;

    sget-object v2, Ld6/c;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lg2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Li2/r;->g(Li2/e;)Lf2/g;

    move-result-object p0

    const-class v0, Lz5/a0;

    const-string v1, "json"

    invoke-static {v1}, Lf2/b;->b(Ljava/lang/String;)Lf2/b;

    move-result-object v1

    sget-object v2, Ld6/c;->f:Lf2/e;

    const-string v3, "FIREBASE_CRASHLYTICS_REPORT"

    invoke-interface {p0, v3, v0, v1, v2}, Lf2/g;->a(Ljava/lang/String;Ljava/lang/Class;Lf2/b;Lf2/e;)Lf2/f;

    move-result-object p0

    new-instance v0, Ld6/c;

    invoke-direct {v0, p0, v2}, Ld6/c;-><init>(Lf2/f;Lf2/e;)V

    return-object v0
.end method

.method public static synthetic d(Lj5/j;Lx5/o;Ljava/lang/Exception;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lj5/j;->d(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lj5/j;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic e(Lz5/a0;)[B
    .locals 1

    sget-object v0, Ld6/c;->c:La6/g;

    invoke-virtual {v0, p0}, La6/g;->E(Lz5/a0;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input received"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public g(Lx5/o;)Lj5/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx5/o;",
            ")",
            "Lj5/i<",
            "Lx5/o;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lx5/o;->b()Lz5/a0;

    move-result-object v0

    new-instance v1, Lj5/j;

    invoke-direct {v1}, Lj5/j;-><init>()V

    iget-object v2, p0, Ld6/c;->a:Lf2/f;

    invoke-static {v0}, Lf2/c;->e(Ljava/lang/Object;)Lf2/c;

    move-result-object v0

    new-instance v3, Ld6/b;

    invoke-direct {v3, v1, p1}, Ld6/b;-><init>(Lj5/j;Lx5/o;)V

    invoke-interface {v2, v0, v3}, Lf2/f;->a(Lf2/c;Lf2/h;)V

    invoke-virtual {v1}, Lj5/j;->a()Lj5/i;

    move-result-object p1

    return-object p1
.end method
