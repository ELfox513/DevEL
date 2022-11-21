.class public final synthetic Lh3/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lh3/g0;

.field public final b:[Lr4/fo1;


# direct methods
.method public constructor <init>(Lh3/g0;[Lr4/fo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/b0;->a:Lh3/g0;

    iput-object p2, p0, Lh3/b0;->b:[Lr4/fo1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lh3/b0;->a:Lh3/g0;

    iget-object v1, p0, Lh3/b0;->b:[Lr4/fo1;

    invoke-virtual {v0, v1}, Lh3/g0;->J7([Lr4/fo1;)V

    return-void
.end method
