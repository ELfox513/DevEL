.class public abstract Lcom/prineside/luaj/ast/Exp;
.super Lcom/prineside/luaj/ast/SyntaxElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/ast/Exp$Constant;,
        Lcom/prineside/luaj/ast/Exp$VarargsExp;,
        Lcom/prineside/luaj/ast/Exp$BinopExp;,
        Lcom/prineside/luaj/ast/Exp$UnopExp;,
        Lcom/prineside/luaj/ast/Exp$AnonFuncDef;,
        Lcom/prineside/luaj/ast/Exp$NameExp;,
        Lcom/prineside/luaj/ast/Exp$ParensExp;,
        Lcom/prineside/luaj/ast/Exp$IndexExp;,
        Lcom/prineside/luaj/ast/Exp$PrimaryExp;,
        Lcom/prineside/luaj/ast/Exp$FieldExp;,
        Lcom/prineside/luaj/ast/Exp$FuncCall;,
        Lcom/prineside/luaj/ast/Exp$MethodCall;,
        Lcom/prineside/luaj/ast/Exp$VarExp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/SyntaxElement;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static anonymousfunction(Lcom/prineside/luaj/ast/FuncBody;)Lcom/prineside/luaj/ast/Exp;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Exp$AnonFuncDef;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/Exp$AnonFuncDef;-><init>(Lcom/prineside/luaj/ast/FuncBody;)V

    return-object v0
.end method

.method public static b(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "precedence of bad op "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_6
    const/4 p0, 0x5

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static binaryexp(Lcom/prineside/luaj/ast/Exp;ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;
    .locals 3

    instance-of v0, p0, Lcom/prineside/luaj/ast/Exp$UnopExp;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/prineside/luaj/ast/Exp$UnopExp;

    invoke-static {p1}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v1

    iget v2, v0, Lcom/prineside/luaj/ast/Exp$UnopExp;->op:I

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v2

    if-le v1, v2, :cond_0

    iget p0, v0, Lcom/prineside/luaj/ast/Exp$UnopExp;->op:I

    iget-object v0, v0, Lcom/prineside/luaj/ast/Exp$UnopExp;->rhs:Lcom/prineside/luaj/ast/Exp;

    invoke-static {v0, p1, p2}, Lcom/prineside/luaj/ast/Exp;->binaryexp(Lcom/prineside/luaj/ast/Exp;ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prineside/luaj/ast/Exp;->unaryexp(ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/prineside/luaj/ast/Exp$BinopExp;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/prineside/luaj/ast/Exp$BinopExp;

    invoke-static {p1}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v1

    iget v2, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-static {p1}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v1

    iget v2, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Lcom/prineside/luaj/ast/Exp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object p0, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->lhs:Lcom/prineside/luaj/ast/Exp;

    iget v1, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->op:I

    iget-object v0, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->rhs:Lcom/prineside/luaj/ast/Exp;

    invoke-static {v0, p1, p2}, Lcom/prineside/luaj/ast/Exp;->binaryexp(Lcom/prineside/luaj/ast/Exp;ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/prineside/luaj/ast/Exp;->binaryexp(Lcom/prineside/luaj/ast/Exp;ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p2, Lcom/prineside/luaj/ast/Exp$BinopExp;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/prineside/luaj/ast/Exp$BinopExp;

    invoke-static {p1}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v1

    iget v2, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v2

    if-gt v1, v2, :cond_3

    invoke-static {p1}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v1

    iget v2, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-static {p1}, Lcom/prineside/luaj/ast/Exp;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object p2, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->lhs:Lcom/prineside/luaj/ast/Exp;

    invoke-static {p0, p1, p2}, Lcom/prineside/luaj/ast/Exp;->binaryexp(Lcom/prineside/luaj/ast/Exp;ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;

    move-result-object p0

    iget p1, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->op:I

    iget-object p2, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->rhs:Lcom/prineside/luaj/ast/Exp;

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/prineside/luaj/ast/Exp;->binaryexp(Lcom/prineside/luaj/ast/Exp;ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_4
    new-instance v0, Lcom/prineside/luaj/ast/Exp$BinopExp;

    invoke-direct {v0, p0, p1, p2}, Lcom/prineside/luaj/ast/Exp$BinopExp;-><init>(Lcom/prineside/luaj/ast/Exp;ILcom/prineside/luaj/ast/Exp;)V

    return-object v0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method public static constant(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/ast/Exp;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Exp$Constant;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/Exp$Constant;-><init>(Lcom/prineside/luaj/LuaValue;)V

    return-object v0
.end method

.method public static fieldop(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Ljava/lang/String;)Lcom/prineside/luaj/ast/Exp$FieldExp;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Exp$FieldExp;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/ast/Exp$FieldExp;-><init>(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Ljava/lang/String;)V

    return-object v0
.end method

.method public static functionop(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Lcom/prineside/luaj/ast/FuncArgs;)Lcom/prineside/luaj/ast/Exp$FuncCall;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Exp$FuncCall;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/ast/Exp$FuncCall;-><init>(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Lcom/prineside/luaj/ast/FuncArgs;)V

    return-object v0
.end method

.method public static indexop(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp$IndexExp;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Exp$IndexExp;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/ast/Exp$IndexExp;-><init>(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Lcom/prineside/luaj/ast/Exp;)V

    return-object v0
.end method

.method public static methodop(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Ljava/lang/String;Lcom/prineside/luaj/ast/FuncArgs;)Lcom/prineside/luaj/ast/Exp$MethodCall;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Exp$MethodCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/prineside/luaj/ast/Exp$MethodCall;-><init>(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Ljava/lang/String;Lcom/prineside/luaj/ast/FuncArgs;)V

    return-object v0
.end method

.method public static nameprefix(Ljava/lang/String;)Lcom/prineside/luaj/ast/Exp$NameExp;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Exp$NameExp;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/Exp$NameExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static numberconstant(Ljava/lang/String;)Lcom/prineside/luaj/ast/Exp;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Exp$Constant;

    invoke-static {p0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaString;->tonumber()Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/Exp$Constant;-><init>(Lcom/prineside/luaj/LuaValue;)V

    return-object v0
.end method

.method public static parensprefix(Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp$ParensExp;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Exp$ParensExp;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/Exp$ParensExp;-><init>(Lcom/prineside/luaj/ast/Exp;)V

    return-object v0
.end method

.method public static tableconstructor(Lcom/prineside/luaj/ast/TableConstructor;)Lcom/prineside/luaj/ast/Exp;
    .locals 0

    return-object p0
.end method

.method public static unaryexp(ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;
    .locals 3

    instance-of v0, p1, Lcom/prineside/luaj/ast/Exp$BinopExp;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/prineside/luaj/ast/Exp$BinopExp;

    invoke-static {p0}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v1

    iget v2, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->op:I

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->b(I)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object p1, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->lhs:Lcom/prineside/luaj/ast/Exp;

    invoke-static {p0, p1}, Lcom/prineside/luaj/ast/Exp;->unaryexp(ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;

    move-result-object p0

    iget p1, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->op:I

    iget-object v0, v0, Lcom/prineside/luaj/ast/Exp$BinopExp;->rhs:Lcom/prineside/luaj/ast/Exp;

    invoke-static {p0, p1, v0}, Lcom/prineside/luaj/ast/Exp;->binaryexp(Lcom/prineside/luaj/ast/Exp;ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/prineside/luaj/ast/Exp$UnopExp;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/ast/Exp$UnopExp;-><init>(ILcom/prineside/luaj/ast/Exp;)V

    return-object v0
.end method

.method public static varargs()Lcom/prineside/luaj/ast/Exp;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Exp$VarargsExp;

    invoke-direct {v0}, Lcom/prineside/luaj/ast/Exp$VarargsExp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lcom/prineside/luaj/ast/Visitor;)V
.end method

.method public isfunccall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isvarargexp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isvarexp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
