.class public final Lg5/s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/w7;


# direct methods
.method public constructor <init>(Lg5/w7;)V
    .locals 0

    iput-object p1, p0, Lg5/s7;->a:Lg5/w7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/s7;->a:Lg5/w7;

    invoke-static {v0}, Lg5/w7;->m(Lg5/w7;)Lg5/p7;

    move-result-object v1

    iput-object v1, v0, Lg5/w7;->e:Lg5/p7;

    return-void
.end method
