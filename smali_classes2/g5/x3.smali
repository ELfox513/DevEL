.class public final Lg5/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lg5/y3;


# direct methods
.method public constructor <init>(Lg5/y3;Z)V
    .locals 0

    iput-object p1, p0, Lg5/x3;->b:Lg5/y3;

    iput-boolean p2, p0, Lg5/x3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/x3;->b:Lg5/y3;

    invoke-static {v0}, Lg5/y3;->a(Lg5/y3;)Lg5/ba;

    move-result-object v0

    iget-boolean v1, p0, Lg5/x3;->a:Z

    invoke-virtual {v0, v1}, Lg5/ba;->i(Z)V

    return-void
.end method
