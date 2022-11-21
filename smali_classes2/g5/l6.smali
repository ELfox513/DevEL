.class public final Lg5/l6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;)V
    .locals 0

    iput-object p1, p0, Lg5/l6;->a:Lg5/i7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lg5/l6;->a:Lg5/i7;

    iget-object v0, v0, Lg5/i7;->n:Lg5/ra;

    invoke-virtual {v0}, Lg5/ra;->b()V

    return-void
.end method
