.class public final La7/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lb7/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La7/a$a;)V
    .locals 0

    invoke-direct {p0}, La7/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La7/b;
    .locals 3

    iget-object v0, p0, La7/a$b;->a:Lb7/a;

    const-class v1, Lb7/a;

    invoke-static {v0, v1}, Lq7/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, La7/a;

    iget-object v1, p0, La7/a$b;->a:Lb7/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La7/a;-><init>(Lb7/a;La7/a$a;)V

    return-object v0
.end method

.method public b(Lb7/a;)La7/a$b;
    .locals 0

    invoke-static {p1}, Lq7/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb7/a;

    iput-object p1, p0, La7/a$b;->a:Lb7/a;

    return-object p0
.end method
