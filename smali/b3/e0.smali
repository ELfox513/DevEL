.class public final Lb3/e0;
.super Lr4/f94;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/e94;)V
    .locals 0

    invoke-direct {p0, p2}, Lr4/f94;-><init>(Lr4/e94;)V

    iput-object p1, p0, Lb3/e0;->d:Landroid/content/Context;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lr4/t84;
    .locals 4

    new-instance v0, Lb3/e0;

    new-instance v1, Lr4/s94;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lr4/s94;-><init>(Lr4/r94;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {v0, p0, v1}, Lb3/e0;-><init>(Landroid/content/Context;Lr4/e94;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "admob_volley"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lr4/t84;

    new-instance v2, Lr4/m94;

    const/high16 v3, 0x1400000

    invoke-direct {v2, v1, v3}, Lr4/m94;-><init>(Ljava/io/File;I)V

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lr4/t84;-><init>(Lr4/z74;Lr4/i84;I)V

    invoke-virtual {p0}, Lr4/t84;->a()V

    return-object p0
.end method


# virtual methods
.method public final a(Lr4/q84;)Lr4/l84;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/q84<",
            "*>;)",
            "Lr4/l84;"
        }
    .end annotation

    invoke-virtual {p1}, Lr4/q84;->d()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lr4/q84;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lr4/rz;->R2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v0, p0, Lb3/e0;->d:Landroid/content/Context;

    const v1, 0xcc77c0

    invoke-static {v0, v1}, Lr4/vl0;->l(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lr4/f70;

    iget-object v1, p0, Lb3/e0;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lr4/f70;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lr4/f70;->a(Lr4/q84;)Lr4/l84;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lr4/q84;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Got gmscore asset response: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lr4/q84;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get gmscore asset response: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lr4/f94;->a(Lr4/q84;)Lr4/l84;

    move-result-object p1

    return-object p1
.end method
