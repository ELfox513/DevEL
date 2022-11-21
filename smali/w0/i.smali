.class public abstract Lw0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lw0/i;
    .locals 1

    new-instance v0, Lw0/i$a;

    invoke-direct {v0}, Lw0/i$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lw0/h;
.end method

.method public final b(Ljava/lang/String;)Lw0/h;
    .locals 1

    invoke-virtual {p0, p1}, Lw0/i;->a(Ljava/lang/String;)Lw0/h;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lw0/h;->a(Ljava/lang/String;)Lw0/h;

    move-result-object v0

    :cond_0
    return-object v0
.end method
