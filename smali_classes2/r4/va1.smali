.class public final synthetic Lr4/va1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vb1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/va1;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/va1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr4/va1;->a:Ljava/lang/String;

    iget-object v1, p0, Lr4/va1;->b:Ljava/lang/String;

    check-cast p1, Lr4/d92;

    invoke-virtual {p1, v0, v1}, Lr4/d92;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
