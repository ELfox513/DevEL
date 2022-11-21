.class public final Lg5/a5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/f6;

.field public final synthetic b:Lg5/b5;


# direct methods
.method public constructor <init>(Lg5/b5;Lg5/f6;)V
    .locals 0

    iput-object p1, p0, Lg5/a5;->b:Lg5/b5;

    iput-object p2, p0, Lg5/a5;->a:Lg5/f6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/a5;->b:Lg5/b5;

    iget-object v1, p0, Lg5/a5;->a:Lg5/f6;

    invoke-static {v0, v1}, Lg5/b5;->a(Lg5/b5;Lg5/f6;)V

    iget-object v0, p0, Lg5/a5;->b:Lg5/b5;

    iget-object v1, p0, Lg5/a5;->a:Lg5/f6;

    iget-object v1, v1, Lg5/f6;->g:Lb5/o1;

    invoke-virtual {v0, v1}, Lg5/b5;->h(Lb5/o1;)V

    return-void
.end method
