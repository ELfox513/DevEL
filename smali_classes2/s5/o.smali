.class public final synthetic Ls5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# instance fields
.field public final synthetic a:Ls5/i;


# direct methods
.method public synthetic constructor <init>(Ls5/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5/o;->a:Ls5/i;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls5/o;->a:Ls5/i;

    invoke-static {v0}, Ls5/n$b;->a(Ls5/i;)Ls5/i;

    move-result-object v0

    return-object v0
.end method
