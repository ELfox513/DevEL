.class public final Lr4/sn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/to3;


# static fields
.field public static final b:Lr4/yn3;


# instance fields
.field public final a:Lr4/yn3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/mn3;

    invoke-direct {v0}, Lr4/mn3;-><init>()V

    sput-object v0, Lr4/sn3;->b:Lr4/yn3;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lr4/nn3;

    const/4 v1, 0x2

    new-array v1, v1, [Lr4/yn3;

    invoke-static {}, Lr4/km3;->c()Lr4/km3;

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

    check-cast v2, Lr4/yn3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lr4/sn3;->b:Lr4/yn3;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lr4/nn3;-><init>([Lr4/yn3;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "messageInfoFactory"

    invoke-static {v0, v1}, Lr4/zm3;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lr4/sn3;->a:Lr4/yn3;

    return-void
.end method

.method public static a(Lr4/xn3;)Z
    .locals 1

    invoke-interface {p0}, Lr4/xn3;->b()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final d(Ljava/lang/Class;)Lr4/ro3;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lr4/ro3<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lr4/pm3;

    invoke-static {p1}, Lr4/uo3;->A(Ljava/lang/Class;)V

    iget-object v1, p0, Lr4/sn3;->a:Lr4/yn3;

    invoke-interface {v1, p1}, Lr4/yn3;->b(Ljava/lang/Class;)Lr4/xn3;

    move-result-object v3

    invoke-interface {v3}, Lr4/xn3;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lr4/uo3;->c()Lr4/hp3;

    move-result-object p1

    invoke-static {}, Lr4/em3;->a()Lr4/cm3;

    move-result-object v0

    invoke-interface {v3}, Lr4/xn3;->a()Lr4/ao3;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lr4/eo3;->b(Lr4/hp3;Lr4/cm3;Lr4/ao3;)Lr4/eo3;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lr4/uo3;->a()Lr4/hp3;

    move-result-object p1

    invoke-static {}, Lr4/em3;->b()Lr4/cm3;

    move-result-object v0

    invoke-interface {v3}, Lr4/xn3;->a()Lr4/ao3;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lr4/eo3;->b(Lr4/hp3;Lr4/cm3;Lr4/ao3;)Lr4/eo3;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lr4/sn3;->a(Lr4/xn3;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lr4/go3;->b()Lr4/fo3;

    move-result-object v4

    invoke-static {}, Lr4/kn3;->e()Lr4/kn3;

    move-result-object v5

    invoke-static {}, Lr4/uo3;->c()Lr4/hp3;

    move-result-object v6

    invoke-static {}, Lr4/em3;->a()Lr4/cm3;

    move-result-object v7

    invoke-static {}, Lr4/wn3;->b()Lr4/vn3;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lr4/do3;->J(Ljava/lang/Class;Lr4/xn3;Lr4/fo3;Lr4/kn3;Lr4/hp3;Lr4/cm3;Lr4/vn3;)Lr4/do3;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lr4/go3;->b()Lr4/fo3;

    move-result-object v4

    invoke-static {}, Lr4/kn3;->e()Lr4/kn3;

    move-result-object v5

    invoke-static {}, Lr4/uo3;->c()Lr4/hp3;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lr4/wn3;->b()Lr4/vn3;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lr4/do3;->J(Ljava/lang/Class;Lr4/xn3;Lr4/fo3;Lr4/kn3;Lr4/hp3;Lr4/cm3;Lr4/vn3;)Lr4/do3;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lr4/sn3;->a(Lr4/xn3;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lr4/go3;->a()Lr4/fo3;

    move-result-object v4

    invoke-static {}, Lr4/kn3;->d()Lr4/kn3;

    move-result-object v5

    invoke-static {}, Lr4/uo3;->a()Lr4/hp3;

    move-result-object v6

    invoke-static {}, Lr4/em3;->b()Lr4/cm3;

    move-result-object v7

    invoke-static {}, Lr4/wn3;->a()Lr4/vn3;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lr4/do3;->J(Ljava/lang/Class;Lr4/xn3;Lr4/fo3;Lr4/kn3;Lr4/hp3;Lr4/cm3;Lr4/vn3;)Lr4/do3;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lr4/go3;->a()Lr4/fo3;

    move-result-object v4

    invoke-static {}, Lr4/kn3;->d()Lr4/kn3;

    move-result-object v5

    invoke-static {}, Lr4/uo3;->b()Lr4/hp3;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lr4/wn3;->a()Lr4/vn3;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lr4/do3;->J(Ljava/lang/Class;Lr4/xn3;Lr4/fo3;Lr4/kn3;Lr4/hp3;Lr4/cm3;Lr4/vn3;)Lr4/do3;

    move-result-object p1

    :goto_0
    return-object p1
.end method
