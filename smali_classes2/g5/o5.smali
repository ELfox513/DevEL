.class public final Lg5/o5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/u;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Lg5/u5;


# direct methods
.method public constructor <init>(Lg5/u5;Lg5/u;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg5/o5;->d:Lg5/u5;

    iput-object p2, p0, Lg5/o5;->a:Lg5/u;

    iput-object p3, p0, Lg5/o5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/o5;->d:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    invoke-virtual {v0}, Lg5/ba;->a()V

    iget-object v0, p0, Lg5/o5;->d:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    iget-object v1, p0, Lg5/o5;->a:Lg5/u;

    iget-object v2, p0, Lg5/o5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lg5/ba;->e(Lg5/u;Ljava/lang/String;)V

    return-void
.end method
