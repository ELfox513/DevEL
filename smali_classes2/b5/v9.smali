.class public final Lb5/v9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/qa;


# static fields
.field public static final b:Lb5/ca;


# instance fields
.field public final a:Lb5/ca;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb5/t9;

    invoke-direct {v0}, Lb5/t9;-><init>()V

    sput-object v0, Lb5/v9;->b:Lb5/ca;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lb5/u9;

    const/4 v1, 0x2

    new-array v1, v1, [Lb5/ca;

    invoke-static {}, Lb5/t8;->c()Lb5/t8;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb5/ca;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lb5/v9;->b:Lb5/ca;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lb5/u9;-><init>([Lb5/ca;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "messageInfoFactory"

    invoke-static {v0, v1}, Lb5/f9;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lb5/v9;->a:Lb5/ca;

    return-void
.end method

.method public static a(Lb5/ba;)Z
    .locals 1

    invoke-interface {p0}, Lb5/ba;->b()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final d(Ljava/lang/Class;)Lb5/pa;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lb5/pa<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lb5/x8;

    invoke-static {p1}, Lb5/ra;->g(Ljava/lang/Class;)V

    iget-object v1, p0, Lb5/v9;->a:Lb5/ca;

    invoke-interface {v1, p1}, Lb5/ca;->a(Ljava/lang/Class;)Lb5/ba;

    move-result-object v3

    invoke-interface {v3}, Lb5/ba;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lb5/ra;->b()Lb5/hb;

    move-result-object p1

    invoke-static {}, Lb5/n8;->b()Lb5/l8;

    move-result-object v0

    invoke-interface {v3}, Lb5/ba;->zza()Lb5/ea;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lb5/ia;->j(Lb5/hb;Lb5/l8;Lb5/ea;)Lb5/ia;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lb5/ra;->b0()Lb5/hb;

    move-result-object p1

    invoke-static {}, Lb5/n8;->a()Lb5/l8;

    move-result-object v0

    invoke-interface {v3}, Lb5/ba;->zza()Lb5/ea;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lb5/ia;->j(Lb5/hb;Lb5/l8;Lb5/ea;)Lb5/ia;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lb5/v9;->a(Lb5/ba;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lb5/ka;->b()Lb5/ja;

    move-result-object v4

    invoke-static {}, Lb5/r9;->d()Lb5/r9;

    move-result-object v5

    invoke-static {}, Lb5/ra;->b()Lb5/hb;

    move-result-object v6

    invoke-static {}, Lb5/n8;->b()Lb5/l8;

    move-result-object v7

    invoke-static {}, Lb5/aa;->b()Lb5/z9;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lb5/ha;->F(Ljava/lang/Class;Lb5/ba;Lb5/ja;Lb5/r9;Lb5/hb;Lb5/l8;Lb5/z9;)Lb5/ha;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lb5/ka;->b()Lb5/ja;

    move-result-object v4

    invoke-static {}, Lb5/r9;->d()Lb5/r9;

    move-result-object v5

    invoke-static {}, Lb5/ra;->b()Lb5/hb;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lb5/aa;->b()Lb5/z9;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lb5/ha;->F(Ljava/lang/Class;Lb5/ba;Lb5/ja;Lb5/r9;Lb5/hb;Lb5/l8;Lb5/z9;)Lb5/ha;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lb5/v9;->a(Lb5/ba;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lb5/ka;->a()Lb5/ja;

    move-result-object v4

    invoke-static {}, Lb5/r9;->c()Lb5/r9;

    move-result-object v5

    invoke-static {}, Lb5/ra;->b0()Lb5/hb;

    move-result-object v6

    invoke-static {}, Lb5/n8;->a()Lb5/l8;

    move-result-object v7

    invoke-static {}, Lb5/aa;->a()Lb5/z9;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lb5/ha;->F(Ljava/lang/Class;Lb5/ba;Lb5/ja;Lb5/r9;Lb5/hb;Lb5/l8;Lb5/z9;)Lb5/ha;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lb5/ka;->a()Lb5/ja;

    move-result-object v4

    invoke-static {}, Lb5/r9;->c()Lb5/r9;

    move-result-object v5

    invoke-static {}, Lb5/ra;->a()Lb5/hb;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lb5/aa;->a()Lb5/z9;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lb5/ha;->F(Ljava/lang/Class;Lb5/ba;Lb5/ja;Lb5/r9;Lb5/hb;Lb5/l8;Lb5/z9;)Lb5/ha;

    move-result-object p1

    :goto_0
    return-object p1
.end method
