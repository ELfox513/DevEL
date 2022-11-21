.class public final Lj1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lj1/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj1/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/q;->a:Landroid/content/Context;

    new-instance p1, Lj1/r;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj1/r;-><init>(Lj1/q;Lj1/g;Lj1/p;)V

    iput-object p1, p0, Lj1/q;->b:Lj1/r;

    return-void
.end method

.method public static synthetic a(Lj1/q;)Lj1/r;
    .locals 0

    iget-object p0, p0, Lj1/q;->b:Lj1/r;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Lj1/q;->b:Lj1/r;

    iget-object v1, p0, Lj1/q;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lj1/r;->c(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final c()Lj1/g;
    .locals 1

    iget-object v0, p0, Lj1/q;->b:Lj1/r;

    invoke-static {v0}, Lj1/r;->a(Lj1/r;)Lj1/g;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lj1/q;->b:Lj1/r;

    iget-object v1, p0, Lj1/q;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lj1/r;->b(Landroid/content/Context;)V

    return-void
.end method
