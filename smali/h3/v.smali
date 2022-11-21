.class public final synthetic Lh3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lh3/g0;


# direct methods
.method public constructor <init>(Lh3/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/v;->a:Lh3/g0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 1

    iget-object v0, p0, Lh3/v;->a:Lh3/g0;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lh3/g0;->h7(Landroid/net/Uri;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
