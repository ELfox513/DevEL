.class public final synthetic Lz2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lz2/i;

.field public final b:Z


# direct methods
.method public constructor <init>(Lz2/i;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/g;->a:Lz2/i;

    iput-boolean p2, p0, Lz2/g;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz2/g;->a:Lz2/i;

    iget-boolean v1, p0, Lz2/g;->b:Z

    invoke-virtual {v0, v1}, Lz2/i;->j(Z)V

    return-void
.end method
