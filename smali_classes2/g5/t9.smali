.class public final Lg5/t9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/ca;

.field public final synthetic b:Lg5/ba;


# direct methods
.method public constructor <init>(Lg5/ba;Lg5/ca;)V
    .locals 0

    iput-object p1, p0, Lg5/t9;->b:Lg5/ba;

    iput-object p2, p0, Lg5/t9;->a:Lg5/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/t9;->b:Lg5/ba;

    iget-object v1, p0, Lg5/t9;->a:Lg5/ca;

    invoke-static {v0, v1}, Lg5/ba;->j0(Lg5/ba;Lg5/ca;)V

    iget-object v0, p0, Lg5/t9;->b:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->q()V

    return-void
.end method
