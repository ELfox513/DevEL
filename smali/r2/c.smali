.class public final Lr2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr2/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/b<",
        "Lr2/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lr2/c;
    .locals 1

    invoke-static {}, Lr2/c$a;->a()Lr2/c;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lr2/a;
    .locals 2

    invoke-static {}, Lr2/b;->a()Lr2/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lk2/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/a;

    return-object v0
.end method


# virtual methods
.method public c()Lr2/a;
    .locals 1

    invoke-static {}, Lr2/c;->b()Lr2/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr2/c;->c()Lr2/a;

    move-result-object v0

    return-object v0
.end method
