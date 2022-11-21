.class public final Lg5/a9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/ba;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lg5/c9;Lg5/ba;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lg5/a9;->a:Lg5/ba;

    iput-object p3, p0, Lg5/a9;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/a9;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->a()V

    iget-object v0, p0, Lg5/a9;->a:Lg5/ba;

    iget-object v1, p0, Lg5/a9;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lg5/ba;->k0(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lg5/a9;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->v()V

    return-void
.end method
