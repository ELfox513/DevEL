.class public final synthetic Lr4/cy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/hy1;


# instance fields
.field public final a:Lr4/px1;


# direct methods
.method public constructor <init>(Lr4/px1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cy1;->a:Lr4/px1;

    return-void
.end method

.method public static b(Lr4/px1;)Lr4/hy1;
    .locals 1

    new-instance v0, Lr4/cy1;

    invoke-direct {v0, p0}, Lr4/cy1;-><init>(Lr4/px1;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lr4/og0;)Lr4/h83;
    .locals 1

    iget-object v0, p0, Lr4/cy1;->a:Lr4/px1;

    invoke-virtual {v0, p1}, Lr4/px1;->b(Lr4/og0;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
