.class public final Lp2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp2/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/b<",
        "Lp2/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lp2/h;
    .locals 1

    invoke-static {}, Lp2/h$a;->a()Lp2/h;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lp2/d;
    .locals 2

    invoke-static {}, Lp2/e;->c()Lp2/d;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lk2/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/d;

    return-object v0
.end method


# virtual methods
.method public b()Lp2/d;
    .locals 1

    invoke-static {}, Lp2/h;->c()Lp2/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lp2/h;->b()Lp2/d;

    move-result-object v0

    return-object v0
.end method
