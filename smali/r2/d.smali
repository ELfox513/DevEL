.class public final Lr2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr2/d$a;
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

.method public static a()Lr2/d;
    .locals 1

    invoke-static {}, Lr2/d$a;->a()Lr2/d;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lr2/a;
    .locals 2

    invoke-static {}, Lr2/b;->b()Lr2/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lk2/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/a;

    return-object v0
.end method


# virtual methods
.method public b()Lr2/a;
    .locals 1

    invoke-static {}, Lr2/d;->c()Lr2/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr2/d;->b()Lr2/a;

    move-result-object v0

    return-object v0
.end method
