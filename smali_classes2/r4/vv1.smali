.class public final synthetic Lr4/vv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/wv1;

.field public final b:Lr4/og0;

.field public final c:I


# direct methods
.method public constructor <init>(Lr4/wv1;Lr4/og0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vv1;->a:Lr4/wv1;

    iput-object p2, p0, Lr4/vv1;->b:Lr4/og0;

    iput p3, p0, Lr4/vv1;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 3

    iget-object v0, p0, Lr4/vv1;->a:Lr4/wv1;

    iget-object v1, p0, Lr4/vv1;->b:Lr4/og0;

    iget v2, p0, Lr4/vv1;->c:I

    check-cast p1, Lr4/yx1;

    invoke-virtual {v0, v1, v2, p1}, Lr4/wv1;->b(Lr4/og0;ILr4/yx1;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
