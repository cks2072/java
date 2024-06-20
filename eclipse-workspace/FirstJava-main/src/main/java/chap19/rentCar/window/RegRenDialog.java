package chap19.rentCar.window;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import chap19.rentCar.controller.RentCarController;
import chap19.rentCar.controller.RentCarcontrollerImpl;
import chap19.rentCar.vo.RentCarVO;

public class RegRenDialog extends JDialog {
    private JTextField renNumberField;
    private JTextField renColorField;
    private JTextField renDisplaField;
    private JTextField renMakerField;
    private RentCarController controller;

    public RegRenDialog(RentCarController rentcarController, String string) {
		// TODO Auto-generated constructor stub
	}

	private void initComponents() {
        setLayout(new GridLayout(5, 2));
        add(new JLabel("Rent Number:"));
        renNumberField = new JTextField(20);
        add(renNumberField);

        add(new JLabel("Color:"));
        renColorField = new JTextField(20);
        add(renColorField);

        add(new JLabel("Displacement:"));
        renDisplaField = new JTextField(20);
        add(renDisplaField);

        add(new JLabel("Maker:"));
        renMakerField = new JTextField(20);
        add(renMakerField);

        JButton saveButton = new JButton("Save");
        saveButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                saveRentCar();
            }
        });
        add(saveButton);

        JButton cancelButton = new JButton("Cancel");
        cancelButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                dispose();
            }
        });
        add(cancelButton);

        pack();
        setLocationRelativeTo(getOwner());
    }

    private void saveRentCar() {
        RentCarVO vo = new RentCarVO();
        vo.setRenNumber(renNumberField.getText());
        vo.setRenColor(renColorField.getText());
        vo.setRenDispla(renDisplaField.getText());
        vo.setRenMaker(renMakerField.getText());

        int result = controller.regRentCar(vo);
        if (result > 0) {
            JOptionPane.showMessageDialog(this, "Rent Car registered successfully");
            dispose();
        } else {
            JOptionPane.showMessageDialog(this, "Error registering Rent Car");
        }
    }
}
