.class public final synthetic Lr4/v83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ij3;


# instance fields
.field public final a:Lr4/e5;


# direct methods
.method public constructor <init>(Lr4/e5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/v83;->a:Lr4/e5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lr4/v83;->a:Lr4/e5;

    check-cast p1, Lr4/e33;

    sget-object v1, Lr4/nk3;->a:Ljava/util/regex/Pattern;

    :try_start_0
    invoke-virtual {p1, v0}, Lr4/e33;->c(Lr4/e5;)Z

    move-result p1
    :try_end_0
    .catch Lr4/ae3; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
