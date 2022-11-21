.class public final Lh3/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lh3/i0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/i0;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lh3/i0;
    .locals 0

    iput-object p1, p0, Lh3/i0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lh3/k0;
    .locals 2

    new-instance v0, Lh3/k0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh3/k0;-><init>(Lh3/i0;Lh3/j0;)V

    return-object v0
.end method
