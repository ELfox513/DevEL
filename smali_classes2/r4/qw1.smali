.class public final synthetic Lr4/qw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/rw1;

.field public final b:Lr4/og0;

.field public final c:I


# direct methods
.method public constructor <init>(Lr4/rw1;Lr4/og0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qw1;->a:Lr4/rw1;

    iput-object p2, p0, Lr4/qw1;->b:Lr4/og0;

    iput p3, p0, Lr4/qw1;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 3

    iget-object v0, p0, Lr4/qw1;->a:Lr4/rw1;

    iget-object v1, p0, Lr4/qw1;->b:Lr4/og0;

    iget v2, p0, Lr4/qw1;->c:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lr4/rw1;->b(Lr4/og0;ILjava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
