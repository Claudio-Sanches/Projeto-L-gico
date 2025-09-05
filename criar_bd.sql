-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_ecommerce
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_ecommerce` DEFAULT CHARACTER SET utf8mb4 ;
USE `db_ecommerce` ;

-- -----------------------------------------------------
-- Table `db_ecommerce`.`calculoDoFrete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`calculoDoFrete` (
  `Pedido_idPedido` INT NOT NULL,
  `Pedido_Cliente_idCliente` INT NOT NULL,
  `Entrega do Pedido_IdEntrega` INT NOT NULL,
  `Valor Frete` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`Pedido_idPedido`, `Pedido_Cliente_idCliente`, `Entrega do Pedido_IdEntrega`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`cliente` (
  `idCliente` INT NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '	';


-- -----------------------------------------------------
-- Table `db_ecommerce`.`disponibilizando um produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`disponibilizandoUmProduto` (
  `Fornecedor_idFornecedor` INT NOT NULL,
  `Produto_idProduto` INT NOT NULL,
  PRIMARY KEY (`Fornecedor_idFornecedor`, `Produto_idProduto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`entrega do pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`entregaDoPedido` (
  `IdEntrega` INT NOT NULL,
  `LocalDeEntrega` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Rastreio` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdEntrega`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`estocar produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`estocarProduto` (
  `Produto_idProduto` INT NOT NULL,
  `Estoque_idEstoque` INT NOT NULL,
  `Quantidade` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Produto_idProduto`, `Estoque_idEstoque`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`estoque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`estoque` (
  `idEstoque` INT NOT NULL,
  `Local` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idEstoque`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '	';


-- -----------------------------------------------------
-- Table `db_ecommerce`.`fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`fornecedor` (
  `idFornecedor` INT NOT NULL,
  `RazaoSocial` VARCHAR(45) NULL DEFAULT NULL,
  `CNPJ` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idFornecedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`pagamento` (
  `idPagamento` INT NOT NULL,
  `Cartão` VARCHAR(45) NULL DEFAULT NULL,
  `Pix` VARCHAR(45) NULL DEFAULT NULL,
  `Pessoa Juridica_idPessoa Juridica` INT NOT NULL,
  `Pessoa Física_idPessoa Física` INT NOT NULL,
  PRIMARY KEY (`idPagamento`, `Pessoa Juridica_idPessoa Juridica`, `Pessoa Física_idPessoa Física`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`pedido` (
  `idPedido` INT NOT NULL,
  `Status_do_pedido` VARCHAR(45) NULL DEFAULT NULL,
  `Descrição` VARCHAR(45) NULL DEFAULT NULL,
  `Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idPedido`, `Cliente_idCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`pessoa física`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`pessoa_fisica` (
  `idPessoa_Fisica` INT NOT NULL AUTO_INCREMENT,
  `PNome` VARCHAR(45) NOT NULL,
  `Nomedomeio` VARCHAR(45) NULL DEFAULT NULL,
  `Sobrenome` VARCHAR(45) NULL DEFAULT NULL,
  `CPF` VARCHAR(11) NOT NULL,
  `Endereço` VARCHAR(45) NULL DEFAULT NULL,
  `datadenascimento` DATE NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idPessoa_Fisica`, `Cliente_idCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE UNIQUE INDEX `CPF_UNIQUE` ON `db_ecommerce`.`pessoa_fisica` (`CPF` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`pessoa juridica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`pessoa_juridica` (
  `idPessoa_Juridica` INT NOT NULL,
  `Nome` VARCHAR(45) NULL DEFAULT NULL,
  `CNPJ` VARCHAR(45) NULL DEFAULT NULL,
  `Endereço` VARCHAR(45) NULL DEFAULT NULL,
  `Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idPessoa_Juridica`, `Cliente_idCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`produto` (
  `idProduto` INT NOT NULL,
  `Categoria` VARCHAR(45) NULL DEFAULT NULL,
  `Descrição` VARCHAR(45) NULL DEFAULT NULL,
  `Valor` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idProduto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`relacaoProdutoPedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`relacaoProdutoPedido` (
  `Produto_idProduto` INT NOT NULL,
  `Pedido_idPedido` INT NOT NULL,
  `Quantidade` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Produto_idProduto`, `Pedido_idPedido`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`vendaPorTerceiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`vendaPorTerceiro` (
  `Produto_idProduto` INT NOT NULL,
  `Vendedor-Terceiro_idVendedor-Terceiro` INT NOT NULL,
  `Quantidade` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Produto_idProduto`, `Vendedor-Terceiro_idVendedor-Terceiro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`vendedor - terceiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`vendedorTerceiro` (
  `idVendedorTerceiro` INT NOT NULL,
  `RazaoSocial` VARCHAR(45) NULL DEFAULT NULL,
  `Local` VARCHAR(45) NULL DEFAULT NULL,
  `CNPJ` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idVendedorTerceiro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- begin attached script 'script'

-- end attached script 'script'

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
