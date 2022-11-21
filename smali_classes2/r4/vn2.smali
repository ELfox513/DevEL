.class public final synthetic Lr4/vn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/qn2;


# direct methods
.method public constructor <init>(Lr4/qn2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vn2;->a:Lr4/qn2;

    return-void
.end method

.method public static a(Lr4/qn2;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lr4/vn2;

    invoke-direct {v0, p0}, Lr4/vn2;-><init>(Lr4/qn2;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/vn2;->a:Lr4/qn2;

    invoke-virtual {v0}, Lr4/qn2;->d()V

    return-void
.end method
